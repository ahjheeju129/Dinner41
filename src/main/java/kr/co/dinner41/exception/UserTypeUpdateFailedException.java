package kr.co.dinner41.exception;

public class UserTypeUpdateFailedException extends UserTypeException {
	private static final long serialVersionUID = 1L;
	private static final String MESSAGE="UserTypeDaoImpl�� update�޼��� ���� �� ���� �߻�";
	
	public UserTypeUpdateFailedException() {
		this(MESSAGE);
	}
	
	public UserTypeUpdateFailedException(String message) {
		super(message);
	}

}
