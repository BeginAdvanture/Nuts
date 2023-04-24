package action;

import adminAction.AdminIndexAction;
import adminAction.AdminLoginAction;
import adminAction.AdminLogoutAction;
import adminAction.AdminMemberListAction;
import adminAction.AdminOrderListAction;
import adminAction.AdminOrderSaveAction;
import adminAction.AdminProductDetailAction;
import adminAction.AdminProductListAction;
import adminAction.AdminProductUpdateAction;
import adminAction.AdminProductUpdateFormAction;
import adminAction.AdminProductWriteAction;
import adminAction.AdminProductWriteFormAction;
import adminAction.AdminQnaDetailAction;
import adminAction.AdminQnaListAction;
import adminAction.AdminQnaResaveAction;
import adminAction.BoardCheckPassAction;
import adminAction.BoardCheckPassFormAction;
import adminAction.BoardDeleteAction;
import adminAction.BoardListAction;
import adminAction.BoardReplyAction;
import adminAction.BoardReplyFormAction;
import adminAction.BoardUpdateAction;
import adminAction.BoardUpdateFormAction;
import adminAction.BoardWriteAction;
import adminAction.BoardWriteFormAction;
import pack.AdminMainPage;
import pack.AllListAction;
import pack.AllListPriceAction;
import pack.BoardListPage;
import pack.BoardViewAction;
import pack.BoardViewAction1;
import pack.HumanPickAllListAction;
import pack.HumanPickAllPriceAction;
import pack.KindHumanPickListAction;
import pack.KindListCaoontAction;
import pack.KindPickListAction;
import pack.KindPickPriceListAction;
import pack.MaginPage;
import pack.NotiUpdatePage;
import pack.NotiViewPage;
import pack.NotiWriteAction;
import pack.NotiWriteForm;
import pack.QuestionPage;
import pack.allListCaoontAction;
import pack.humanAllListAction;

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
		if (command.equals("main")) {
			action = new MainAction();
		} else if (command.equals("contract")) {
			action = new ContractAction();
		} else if (command.equals("join_form")) {
			action = new JoinFormAction();
		} else if (command.equals("id_check_form")) {

			action = new IdCheckFormAction();
		} else if (command.equals("find_zip_num")) {
			action = new FindZipNumAction();
		} else if (command.equals("join")) {
			action = new JoinAction();
		} else if (command.equals("login_form")) {
			action = new LoginFormAction();
		} else if (command.equals("login")) {
			action = new LoginAction();
		} else if (command.equals("logout")) {
			action = new LogoutAction();
		} else if (command.equals("product_detail")) {
			action = new ProductDetailAction();
		} else if (command.equals("catagory")) {
			action = new ProductKindAction();
		}

		/*
		 * else if (command.equals("purchase_insert")) { action = new PurchaseAction();
		 * }
		 */
		/*
		 * 
		 * else if (command.equals("review_form")) { action = new ReviewInsertAction();
		 * } else if (command.equals("review_list")) { action = new ReviewListAction();
		 * }
		 */

		else if (command.equals("heart_insert")) {
			action = new HeartInsertAction();
		} else if (command.equals("heart_list")) {
			action = new HeartListAction();
		} else if (command.equals("heart_delete")) {
			action = new HeartDeleteAction();
		}

		else if (command.equals("cart_insert")) {
			action = new CartInsertAction();
		} else if (command.equals("cart_list")) {
			action = new CartListAction();
		} else if (command.equals("cart_delete")) {
			action = new CartDeleteAction();
		}

		else if (command.equals("order_insert")) {
			action = new OrderInsertAction();
		} else if (command.equals("order_list")) {
			action = new OrderListAction();
		}

		else if (command.equals("mypage")) {
			action = new MyPageAction();
		} else if (command.equals("order_detail")) {
			action = new OrderDetailAction();
		} else if (command.equals("order_all")) {
			action = new OrderAllAction();

		} else if (command.equals("check_form")) {
			System.out.println("sdfsdf");
			action = new LoginFind();
		} else if (command.equals("id_find")) {
			System.out.println("sdfsdf");
			action = new idFindAction();
		} else if (command.equals("qna_list")) {
			action = new QnaListAction();
		}

		else if (command.equals("qna_write_form")) {
			action = new QnaWriteFormAction();
		} else if (command.equals("qna_write")) {
			action = new QnaWriteAction();
		} else if (command.equals("qna_view")) {
			action = new QnaViewAction();
		}

		///////////////////////////////////// 관리자

		else if (command.equals("admin_login_form")) {
			action = new AdminIndexAction();
		} else if (command.equals("admin_login")) {
			action = new AdminLoginAction();
		} else if (command.equals("admin_logout")) {
			action = new AdminLogoutAction();
		}

		else if (command.equals("admin_product_list")) {
			action = new AdminProductListAction();
		} else if (command.equals("admin_product_write_form")) {
			action = new AdminProductWriteFormAction();
		} else if (command.equals("admin_product_write")) {
			action = new AdminProductWriteAction();
			System.out.println("asdadsasd");
		}

		else if (command.equals("admin_product_detail")) {
			action = new AdminProductDetailAction();
		} else if (command.equals("admin_product_update_form")) {
			action = new AdminProductUpdateFormAction();
		} else if (command.equals("admin_product_update")) {
			action = new AdminProductUpdateAction();
		} else if (command.equals("admin_order_list")) {
			action = new AdminOrderListAction();
		} else if (command.equals("admin_order_save")) {
			action = new AdminOrderSaveAction();
		} else if (command.equals("admin_member_list")) {
			action = new AdminMemberListAction();
		} else if (command.equals("admin_qna_list")) {
			action = new AdminQnaListAction();
		} else if (command.equals("admin_qna_detail")) {
			action = new AdminQnaDetailAction();
		} else if (command.equals("admin_qna_repsave")) {
			action = new AdminQnaResaveAction();
		}

		//////////////////////////////////////////////////////////////////////

		else if (command.equals("AllList_form")) {
			action = new AllListAction();
		} else if (command.equals("product_detail")) {
			action = new ProductDetailAction();
		} else if (command.equals("kindpick_form")) {
			action = new KindPickListAction();
		} else if (command.equals("allListPrice_form")) {
			action = new AllListPriceAction();
		} else if (command.equals("kindpickPrice_form")) {
			action = new KindPickPriceListAction();
		} else if (command.equals("humanAllList_form")) {
			action = new humanAllListAction();
		}

		else if (command.equals("kindhumanpick_form")) {
			action = new KindHumanPickListAction();
		}

		else if (command.equals("allListCaoont_form")) {
			action = new allListCaoontAction();
		} else if (command.equals("kindListCaoont_form")) {
			action = new KindListCaoontAction();
		} else if (command.equals("humanPickAllListCaoont_form")) {
			action = new HumanPickAllListAction();
		} else if (command.equals("humanPickAllListPrice_form")) {
			action = new HumanPickAllPriceAction();
		}

		//////////////////// board

		else if (command.equals("board_list")) {
			action = new BoardListAction();
		} else if (command.equals("board_write_form")) {
			action = new BoardWriteFormAction();
		} else if (command.equals("board_write")) {
			action = new BoardWriteAction();
		} else if (command.equals("board_view1")) {
			action = new BoardViewAction1();
		} 
		
		else if (command.equals("board_check_pass_form")) {
			action = new BoardCheckPassFormAction();
		} 
		
		
		else if (command.equals("board_check_pass")) {
			action = new BoardCheckPassAction();
		} 
		
		else if (command.equals("board_update_form")) {
			action = new BoardUpdateFormAction();
		} else if (command.equals("board_update")) {
			action = new BoardUpdateAction();
		}
		
		else if (command.equals("board_delete")) {
			action = new BoardDeleteAction();
		} 
		
		
		else if (command.equals("board_reply_form")) {
			action = new BoardReplyFormAction();
		} else if (command.equals("board_reply")) {
			action = new BoardReplyAction();
		}

///////////////////////////////////////////////// 관리자 1:1 
		else if (command.equals("admin_page")) {
			action = new AdminMainPage();
		} else if (command.equals("admin_view")) {
			action = new NotiViewPage();
		}

		else if (command.equals("noti_UpdatePage")) {
			action = new NotiUpdatePage();
		}

		else if (command.equals("noti_Update")) {
			action = new NotiUpdateAction();
		}

		else if (command.equals("noti_write_form")) {
			action = new NotiWriteForm();
		}

		else if (command.equals("noti_write")) {
			action = new NotiWriteAction();
		}

		else if (command.equals("noti_Delete")) {
			action = new NotiDeleteAction();
		}

		else if (command.equals("user_center")) {
			action = new UserCenterPage();
		}

		else if (command.equals("user_delete")) {
			action = new UserDelete();
		}

		else if (command.equals("user_update")) {
			action = new UserUpdatePage();
		}

		else if (command.equals("user_updateAction")) {
			action = new UserUpdateAction();
		} else if (command.equals("insert_member_form")) {
			action = new InsertMemberPage();
		} else if (command.equals("insert_member")) {
			action = new InsertMember();
		}
///////////////////////게시판
		else if (command.equals("main_page")) {
			action = new MaginPage();
		} else if (command.equals("ques_page")) {
			action = new QuestionPage();
		} else if (command.equals("board_page")) {
			action = new BoardListPage();
		} else if (command.equals("board_view")) {
			action = new BoardViewAction();

		}

		return action;
	}
}
