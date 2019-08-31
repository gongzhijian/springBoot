package com.us.example.domain;

import com.fasterxml.jackson.databind.util.JSONPObject;
import org.json.simple.JSONObject;

public class ResultModel {

    private Boolean success;

    private Object result;

    private String errorMessage;

    public ResultModel(){

    }

    public ResultModel(String errorMessage){
        this.errorMessage=errorMessage;
    }

    public Boolean getSuccess() {
        return success;
    }

    public void setSuccess(Boolean success) {
        this.success = success;
    }

    public Object getResult() {
        return result;
    }

    public void setResult(Object result) {
        this.result = result;
    }

    public String getErrorMessage() {
        return errorMessage;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    @Override
    public String toString() {
        return "ResultModel{" +
                "success=" + success +
                ", result=" + result +
                ", errorMessage='" + errorMessage + '\'' +
                '}';
    }
}
