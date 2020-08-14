package kr.co.dinner41.exception.order;

public class OrderUpdateException extends OrderException {
	private static final long serialVersionUID = 1L;
	private static final String MESSAGE = "�ֹ��� ������Ʈ�ϴ� ���� ������ �߻��Ͽ����ϴ�.";
    public OrderUpdateException(){
        this(MESSAGE);
    }
    public OrderUpdateException(String message) {
        super(message);
    }
}
