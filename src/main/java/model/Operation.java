package model;

import jakarta.servlet.http.HttpSession;

public class Operation {

    /**
     * ログイン処理
     * @param email リクエストパラメータ
     * @param password リクエストパラメータ
     * @param session セッションオブジェクト
     * @return true .. 正常、false .. ID／パスワード誤り
     */
    public boolean loginProc(String email, String password, HttpSession session) {
        boolean result = authenticate(email, password);

        if (result) {
            // 認証成功時、ユーザーIDをセッションに保存
            session.setAttribute("email", email);
        }

        return result;
    }

    /**
     * 仮の認証処理（emailが ".com" のときだけOK）
     * 仮の認証処理（パスワードが "pass" のときだけOK）
     */
    private boolean authenticate(String email, String password) {
        return  email.equals(".com") && password.equals("pass");
    }

    /**
     * ログアウト処理（セッションを無効化）
     */
    public void logoutProc(HttpSession session) {
        session.invalidate();
    }
}

