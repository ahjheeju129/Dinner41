package kr.co.dinner41.exception;

public class UserTypeDeleteFailedException extends UserTypeException {
	private static final long serialVersionUID = 1L;
	private static final String MESSAGE="UserTypeDaoImpl�� delete�޼ҵ� ���� �� ���� �߻�";
	public UserTypeDeleteFailedException() {
		this(MESSAGE);
	}
	public UserTypeDeleteFailedException(String message) {
		super(message);
	}
}
