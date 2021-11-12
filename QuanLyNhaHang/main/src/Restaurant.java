import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.layout.*;
import javafx.stage.Stage;
public class Restaurant extends Application
{
    @Override
    public void start(Stage primaryStage)
    {
        StackPane root = new StackPane();
        root.setId("login-background");
        Scene scene = new Scene(root, 650, 650);
        scene.getStylesheets().add(String.valueOf(this.getClass().getResource("sample.css")));
        primaryStage.setScene(scene);
        primaryStage.show();
    }
    public static void main(String[] args)
    {
        launch(args);
    }
}