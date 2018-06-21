package util;

import org.hey.modle.CmsResult;
import org.hey.modle.ResponseData;
import org.hey.service.util.BeanFactory;

public class CommonUntl {

	
	//简化返回类
	public static CmsResult getCmsResult(boolean isSuccess,String message,String code)  {
		CmsResult cmsResult = BeanFactory.createBean(CmsResult.class);
		cmsResult.setCode(code);
		cmsResult.setMessage(message);
		cmsResult.setSuccess(isSuccess);
		return cmsResult;
	}

	public static  ResponseData getResponseData(String code, String msg, String count, Object data){
		ResponseData rd = BeanFactory.createBean(ResponseData.class);
		rd.setCode(code);
		rd.setMsg(msg);
		rd.setCount(count);
		rd.setData(data);
		return rd;
	}
}
