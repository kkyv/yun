package cn.allene.yun.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.allene.yun.pojo.FileCustom;
import cn.allene.yun.pojo.Result;
import cn.allene.yun.pojo.ShareFile;
import cn.allene.yun.service.ShareService;

@Controller
public class ShareController {
	@Autowired
	private ShareService shareService;
	@RequestMapping("/share")
	public String share(HttpServletRequest request, String shareUrl){
		try {
			List<ShareFile> files = shareService.findShare(request, shareUrl);
			request.setAttribute("files", files);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "share";
	}
	
	@RequestMapping("/shareFile")
	public @ResponseBody Result<String> shareFile(HttpServletRequest request, String currentPath, String[] shareFile){
		try {
			String shareUrl = shareService.shareFile(request, currentPath, shareFile);
			Result<String> result = new Result<>(405, true, "分享成功");
			result.setData("share.action?shareUrl=" + shareUrl);
			return result;
		} catch (Exception e) {
			e.printStackTrace();
			return new Result<>(401, false, "分享失败");
		}
	}
}
