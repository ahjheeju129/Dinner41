package kr.co.dinner41.exception;

public class UserInsertFailedException extends UserException {
	private static final long serialVersionUID = 1L;
	private static final String MESSAGE="userDao�� insert�޼��� ���� �� ���� �߻�";
	
	public UserInsertFailedException() {
		this(MESSAGE);
	}

	public UserInsertFailedException(String message) {
		super(message);
	}
}
