package kr.co.dinner41.exception.order;

public class OrderInsertException extends OrderException {
	private static final long serialVersionUID = 1L;
	private static final String MESSAGE = "�ֹ��� ����ϴ� �� ������ �߻��Ͽ����ϴ�.";
    public OrderInsertException(){
        this(MESSAGE);
    }
    public OrderInsertException(String message) {
        super(message);
    }
}
