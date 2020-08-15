package kr.co.dinner41.exception.order;

public class OrderSelectException extends OrderException {
	private static final long serialVersionUID = 1L;
	private static final String MESSAGE = "�ֹ������� �������� ���� ������ �߻��Ͽ����ϴ�.";
    public OrderSelectException(){
        this(MESSAGE);
    }
    public OrderSelectException(String message) {
        super(message);
    }
}
