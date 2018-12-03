package com.kensure.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.coobird.thumbnailator.Thumbnails;
import net.coobird.thumbnailator.Thumbnails.Builder;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import co.kensure.frame.Const;
import co.kensure.mem.NumberUtils;

/**
 * 图片
 * 
 * @author fankaidi
 *
 */
@Controller
@RequestMapping(value = "filetemp")
public class FileController {

	private static Map<String, Builder<File>> map = new HashMap<String, Builder<File>>();

	// 图片
	@ResponseBody
	@RequestMapping("{riqi}/{name}.{flag}")
	public void index(@PathVariable String riqi, @PathVariable String name, @PathVariable String flag, HttpServletRequest req, HttpServletResponse rep) {
		Builder<File> f = getByCache(riqi, name, flag);
		ServletOutputStream os = null;
		if (f != null) {
			try {
				os = rep.getOutputStream();
				f.toOutputStream(os);
			} catch (IOException e) {
				e.printStackTrace();
			} finally {
				try {
					os.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}

	}

	private Builder<File> getByCache(String riqi, String name, String flag) {
		String key = riqi + name + flag;
		Builder<File> f = map.get(key);
		if (f == null) {
			f = doCache(riqi, name, flag);
		}
		return f;
	}

	private synchronized Builder<File> doCache(String riqi, String name, String flag) {
		String key = riqi + name + flag;
		Builder<File> builder = map.get(key);
		if (builder == null) {
			String[] flags = flag.split("!");
			String flag0 = flags[0];
			int flag1 = NumberUtils.parseInteger(flags[1], 100);
			String filepath = Const.ROOT_PATH + "/filetemp/" + riqi + "/" + name + "." + flag0;
			File file = new File(filepath);

			if (file.exists()) {
				// 加载图片源
				Builder<File> f = Thumbnails.of(file);
				if (file.length() > flag1 * flag1) {
					builder = f.size(flag1, flag1);
				} else {
					builder = f;
				}
				map.put(key, builder);
			}
		}
		return builder;
	}

}
