package clf.dangdang.action;

import clf.dangdang.util.BaseAction;

import com.opensymphony.xwork2.ActionSupport;

public class OrderMagAction extends ActionSupport {
	BaseAction ba = new BaseAction();

	public String toOrder() {
		// ����Ϊ�� ת��һ������

		return "toOrderOk";
	}

	public String toAddress() {
		// �ж���û�е�¼ û�е�¼�Ļ� ��ת�� ��¼ע�����
		if (ba.getSessionScope("user") == null) {
			// ��ת�� ��¼ע�����
			ba.setSessionScope("address", "Address");
			return "toAddressErro";
		}
		// ��ת����д��ַ����
		return "toAddressOk";
	}
}
