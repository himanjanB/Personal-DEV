public class DateOverdue {
    private static void showOverDueDate(Date inputDate) {
        System.debug('Overdue is ' + (System.Today().daysBetween(inputDate) + 2));
    }
}