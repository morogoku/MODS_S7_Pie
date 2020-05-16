.class Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;
.super Landroid/os/AsyncTask;
.source "KeyguardSmartcardPINView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSmartcardPINView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerifyPasswordWithCACTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field errorMsgId:I

.field password:Ljava/lang/String;

.field status:Z

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardSmartcardPINView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->password:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->status:Z

    iput p1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardSmartcardPINView;Lcom/android/keyguard/KeyguardSmartcardPINView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;-><init>(Lcom/android/keyguard/KeyguardSmartcardPINView;)V

    return-void
.end method

.method private verifyPIN(Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    const-string v1, "com.samsung.ucs.ucsservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "KeyguardSmartcardPINView"

    const-string v3, "failed to get UCS service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    const-string v0, "KeyguardSmartcardPINView"

    const-string v1, "doInBackground():VerifyPasswordWithCACTask"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->password:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->password:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->verifyPIN(Ljava/lang/String;)I

    move-result v0

    const-string v1, "KeyguardSmartcardPINView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VerifyPIN(withUCS-BM): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v0, "KeyguardSmartcardPINView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnPostExecute():VerifyPasswordWithCACTask result :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->status:Z

    iput v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    invoke-static {}, Lcom/android/keyguard/KeyguardSmartcardPINView;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "KeyguardSmartcardPINView"

    const-string v1, "VerifyPasswordWithCACTask mCurrent == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSmartcardPINView;->setPasswordEntryEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->status:Z

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->password:Ljava/lang/String;

    iget v3, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardSmartcardPINView;->access$300(Lcom/android/keyguard/KeyguardSmartcardPINView;ZLjava/lang/String;I)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    const-string v0, "KeyguardSmartcardPINView"

    const-string v1, "OnPreExecute():VerifyPasswordWithCACTask"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v1, 0x7f12088e

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSmartcardPINView;->setPasswordEntryEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSmartcardPINView;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSmartcardPINView;->access$102(Lcom/android/keyguard/KeyguardSmartcardPINView;Z)Z

    return-void
.end method
