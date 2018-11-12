package com.cg.onlineshop.customresponse;

public class CustomResponse {
private int statusCode;
private String responseMessage;
public CustomResponse(int statusCode, String responseMessage) {
	super();
	this.statusCode = statusCode;
	this.responseMessage = responseMessage;
}
public CustomResponse() {
	super();
}
public int getStatusCode() {
	return statusCode;
}
public void setStatusCode(int statusCode) {
	this.statusCode = statusCode;
}
public String getResponseMessage() {
	return responseMessage;
}
public void setResponseMessage(String responseMessage) {
	this.responseMessage = responseMessage;
}
@Override
public String toString() {
	return "CustomResponse [statusCode=" + statusCode + ", responseMessage=" + responseMessage + "]";
}

}
