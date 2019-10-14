.class Lcom/android/keyguard/KeyguardAccountView$2;
.super Ljava/lang/Object;
.source "KeyguardAccountView.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardAccountView;->asyncCheckSAPassword()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardAccountView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAccountView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10

    const-string v0, "2kbfdax337"

    const-string v1, "BB8A5C25AE13720FCBC1806F16D961F6"

    const-string v2, "com.android.systemui"

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardAccountView;->access$600(Lcom/android/keyguard/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {p2}, Lcom/msc/sa/aidl/ISAService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/msc/sa/aidl/ISAService;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/keyguard/KeyguardAccountView;->access$902(Lcom/android/keyguard/KeyguardAccountView;Lcom/msc/sa/aidl/ISAService;)Lcom/msc/sa/aidl/ISAService;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    const/16 v5, 0x64

    invoke-static {v4, v5}, Lcom/android/keyguard/KeyguardAccountView;->access$1002(Lcom/android/keyguard/KeyguardAccountView;I)I

    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardAccountView;->access$900(Lcom/android/keyguard/KeyguardAccountView;)Lcom/msc/sa/aidl/ISAService;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardAccountView;->access$900(Lcom/android/keyguard/KeyguardAccountView;)Lcom/msc/sa/aidl/ISAService;

    move-result-object v5

    const-string v6, "2kbfdax337"

    const-string v7, "BB8A5C25AE13720FCBC1806F16D961F6"

    const-string v8, "com.android.systemui"

    iget-object v9, p0, Lcom/android/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardAccountView;->access$1200(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/KeyguardAccountView$SACallback;

    move-result-object v9

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/msc/sa/aidl/ISAService;->registerCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/msc/sa/aidl/ISACallback;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/keyguard/KeyguardAccountView;->access$1102(Lcom/android/keyguard/KeyguardAccountView;Ljava/lang/String;)Ljava/lang/String;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "password"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardAccountView;->access$900(Lcom/android/keyguard/KeyguardAccountView;)Lcom/msc/sa/aidl/ISAService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardAccountView;->access$1000(Lcom/android/keyguard/KeyguardAccountView;)I

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardAccountView;->access$1100(Lcom/android/keyguard/KeyguardAccountView;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, v4}, Lcom/msc/sa/aidl/ISAService;->requestPasswordConfirmation(ILjava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "KeyguardAccountView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "asyncCheckSAPassword "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardAccountView;->access$902(Lcom/android/keyguard/KeyguardAccountView;Lcom/msc/sa/aidl/ISAService;)Lcom/msc/sa/aidl/ISAService;

    return-void
.end method
