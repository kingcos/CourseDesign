package com.maimieng.action;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by kingcos on 28/09/2016.
 */
public class MainAction extends ActionSupport {

    private Double first_number;
    private Double second_number;
    private int operator;
    private String result;

    /**
     * @return
     * @throws Exception
     */
    @Override
    public String execute() throws Exception {
        String res = calculate();
        result = res;
        return SUCCESS;
    }

    /**
     * 将计算结果作为字符串返回。
     * @return
     */
    public String calculate() {
        String res = "0.0";

        if (first_number == null || second_number == null || operator == -1) {
            res = "ERROR";
        } else {
            if (operator == 1) {
                res = "" + (first_number + second_number);
            } else if (operator == 2) {
                res = "" + (first_number - second_number);
            } else if (operator == 3) {
                res = "" + (first_number * second_number);
            } else if (operator == 4) {
                if (second_number.equals(0.0)) {
                    res = "ERROR";
                } else {
                    res = "" + (first_number / second_number);
                }
            }
        }

        return res;
    }

    public double getFirst_number() {
        return first_number;
    }

    public void setFirst_number(Double first_number) {
        this.first_number = first_number;
    }

    public double getSecond_number() {
        return second_number;
    }

    public void setSecond_number(Double second_number) {
        this.second_number = second_number;
    }

    public int getOperator() {
        return operator;
    }

    public void setOperator(int operator) {
        this.operator = operator;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }
}
