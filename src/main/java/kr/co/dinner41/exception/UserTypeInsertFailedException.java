package kr.co.dinner41.exception;

public class UserTypeInsertFailedException extends UserTypeException {
	private static final long serialVersionUID = 1L;
	private static String MESSAGE="user_types ���̺� insert�ϴٰ� ���� �߻�";
	
	public UserTypeInsertFailedException() {
		this(MESSAGE);
	}
	public UserTypeInsertFailedException(String message) {
		super(MESSAGE);
	}
}
