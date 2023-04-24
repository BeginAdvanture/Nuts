package adminAction;

import action.Action;

import action.CartDeleteAction;
import action.CartInsertAction;
import action.CartListAction;
import action.ContractAction;
import action.FindZipNumAction;
import action.HeartDeleteAction;
import action.HeartInsertAction;
import action.HeartListAction;
import action.IdCheckFormAction;
import action.JoinAction;
import action.JoinFormAction;
import action.LoginAction;
import action.LoginFind;
import action.LoginFormAction;
import action.LogoutAction;
import action.MainAction;
import action.MyPageAction;
import action.OrderAllAction;
import action.OrderDetailAction;
import action.OrderInsertAction;
import action.OrderListAction;
import action.ProductDetailAction;
import action.ProductKindAction;
import action.QnaListAction;
import action.QnaViewAction;
import action.QnaWriteAction;
import action.QnaWriteFormAction;
import action.ReviewInsertAction;
import action.ReviewListAction;
import action.idFindAction;

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();

	private ActionFactory() {
		super();
	}

	public static ActionFactory getInstance() {
		return instance;
	}

	public Action getAction(String command) {
		Action action = null;
		
		return action;
	}
}
