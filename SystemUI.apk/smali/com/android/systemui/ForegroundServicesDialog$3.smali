.class Lcom/android/systemui/ForegroundServicesDialog$3;
.super Ljava/lang/Object;
.source "ForegroundServicesDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ForegroundServicesDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ForegroundServicesDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/ForegroundServicesDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ForegroundServicesDialog$3;->this$0:Lcom/android/systemui/ForegroundServicesDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog$3;->this$0:Lcom/android/systemui/ForegroundServicesDialog;

    invoke-static {v0}, Lcom/android/systemui/ForegroundServicesDialog;->access$100(Lcom/android/systemui/ForegroundServicesDialog;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog$3;->this$0:Lcom/android/systemui/ForegroundServicesDialog;

    invoke-static {v0}, Lcom/android/systemui/ForegroundServicesDialog;->access$100(Lcom/android/systemui/ForegroundServicesDialog;)Landroid/app/NotificationChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setImportance(I)V

    iget-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog$3;->this$0:Lcom/android/systemui/ForegroundServicesDialog;

    invoke-static {v0}, Lcom/android/systemui/ForegroundServicesDialog;->access$100(Lcom/android/systemui/ForegroundServicesDialog;)Landroid/app/NotificationChannel;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->lockFields(I)V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog$3;->this$0:Lcom/android/systemui/ForegroundServicesDialog;

    invoke-static {v0}, Lcom/android/systemui/ForegroundServicesDialog;->access$400(Lcom/android/systemui/ForegroundServicesDialog;)Landroid/app/INotificationManager;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/ForegroundServicesDialog;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/ForegroundServicesDialog;->access$300()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/ForegroundServicesDialog$3;->this$0:Lcom/android/systemui/ForegroundServicesDialog;

    invoke-static {v3}, Lcom/android/systemui/ForegroundServicesDialog;->access$100(Lcom/android/systemui/ForegroundServicesDialog;)Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method
