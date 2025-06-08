package model;

import jakarta.servlet.http.HttpSession;

public class Operation {

    /**
     * ログイン処理
     * @param userId リクエストパラメータ
     * @param password リクエストパラメータ
     * @param session セッションオブジェクト
     * @return true .. 正常、false .. ID／パスワード誤り
     */
    public boolean loginProc(String userId, String password, HttpSession session) {
        boolean result = authenticate(userId, password);

        if (result) {
            // 認証成功時、ユーザーIDをセッションに保存
            session.setAttribute("userId", userId);
        }

        return result;
    }

    /**
     * 仮の認証処理（パスワードが "pass" のときだけOK）
     * 仮の認証処理（ユーザーIDが "123" のときだけOK）
     */
    private boolean authenticate(String userId, String password) {
        return  userId.equals("123") && password.equals("pass");
    }

    /**
     * ログアウト処理（セッションを無効化）
     */
    public void logoutProc(HttpSession session) {
        session.invalidate();
    }
}

