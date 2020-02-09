.class Lcom/samsung/android/MtpApplication/USBConnection$4;
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

    iput-object p1, p0, Lcom/samsung/android/MtpApplication/USBConnection$4;->this$0:Lcom/samsung/android/MtpApplication/USBConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/USBConnection$4;->this$0:Lcom/samsung/android/MtpApplication/USBConnection;

    iget-object v0, v0, Lcom/samsung/android/MtpApplication/USBConnection;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/USBConnection$4;->this$0:Lcom/samsung/android/MtpApplication/USBConnection;

    iget-object v0, v0, Lcom/samsung/android/MtpApplication/USBConnection;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/USBConnection$4;->this$0:Lcom/samsung/android/MtpApplication/USBConnection;

    iget-object v0, v0, Lcom/samsung/android/MtpApplication/USBConnection;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
