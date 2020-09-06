.class Lcom/samsung/android/MtpApplication/USBConnection$7;
.super Ljava/lang/Object;
.source "USBConnection.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/MtpApplication/USBConnection;->showDiaglog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/MtpApplication/USBConnection;


# direct methods
.method constructor <init>(Lcom/samsung/android/MtpApplication/USBConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/MtpApplication/USBConnection$7;->this$0:Lcom/samsung/android/MtpApplication/USBConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const-string v0, "MTPUSBConnection"

    const-string v1, "select mtp mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Allow"

    invoke-static {v0}, Lcom/samsung/android/MtpApplication/USBConnection;->access$002(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/USBConnection$7;->this$0:Lcom/samsung/android/MtpApplication/USBConnection;

    iget-object v0, v0, Lcom/samsung/android/MtpApplication/USBConnection;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/USBConnection$7;->this$0:Lcom/samsung/android/MtpApplication/USBConnection;

    iget-object v0, v0, Lcom/samsung/android/MtpApplication/USBConnection;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/MtpApplication/USBConnection$7;->this$0:Lcom/samsung/android/MtpApplication/USBConnection;

    iget-object v1, v1, Lcom/samsung/android/MtpApplication/USBConnection;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/MtpApplication/USBConnection$7;->this$0:Lcom/samsung/android/MtpApplication/USBConnection;

    iput-object v0, v1, Lcom/samsung/android/MtpApplication/USBConnection;->mDialog:Landroid/app/AlertDialog;

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "MTPUSBConnection"

    const-string v3, "MTP Exception in dismiss dialog select mtp mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/MtpApplication/USBConnection$7;->this$0:Lcom/samsung/android/MtpApplication/USBConnection;

    iput-object v0, v2, Lcom/samsung/android/MtpApplication/USBConnection;->mDialog:Landroid/app/AlertDialog;

    throw v1

    :cond_0
    :goto_2
    return-void
.end method
