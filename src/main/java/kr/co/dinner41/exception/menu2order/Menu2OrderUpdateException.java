package kr.co.dinner41.exception.menu2order;

public class Menu2OrderUpdateException extends Menu2OrderException {
	private static final long serialVersionUID = 1L;
	private static final String MESSAGE = "�ֹ������ ������Ʈ�ϴ� ���� ������ �߻��Ͽ����ϴ�.";
    public Menu2OrderUpdateException(){
        this(MESSAGE);
    }
    public Menu2OrderUpdateException(String message) {
        super(message);
    }
}
