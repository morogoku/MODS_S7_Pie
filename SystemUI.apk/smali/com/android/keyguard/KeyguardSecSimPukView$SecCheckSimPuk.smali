.class abstract Lcom/android/keyguard/KeyguardSecSimPukView$SecCheckSimPuk;
.super Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;
.source "KeyguardSecSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "SecCheckSimPuk"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecSimPukView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecSimPukView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecCheckSimPuk;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;-><init>(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$run$0(Lcom/android/keyguard/KeyguardSecSimPukView$SecCheckSimPuk;[I)V
    .locals 2

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecSimPukView$SecCheckSimPuk;->onSimLockChangedResponse(II)V

    return-void
.end method

.method public static synthetic lambda$run$1(Lcom/android/keyguard/KeyguardSecSimPukView$SecCheckSimPuk;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecSimPukView$SecCheckSimPuk;->onSimLockChangedResponse(II)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    const-string v0, "KeyguardSimPukView"

    const-string v1, "call supplyPukReportResult()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecCheckSimPuk;->mSubId:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecCheckSimPuk;->mPuk:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecCheckSimPuk;->mPin:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    const-string v2, "KeyguardSimPukView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "supplyPukReportResult returned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecCheckSimPuk;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    new-instance v3, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPukView$SecCheckSimPuk$T6n0iMSPaZVqUhWgwc8j91UdaWs;

    invoke-direct {v3, p0, v1}, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPukView$SecCheckSimPuk$T6n0iMSPaZVqUhWgwc8j91UdaWs;-><init>(Lcom/android/keyguard/KeyguardSecSimPukView$SecCheckSimPuk;[I)V

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardSecSimPukView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KeyguardSimPukView"

    const-string v2, "RemoteException for supplyPukReportResult:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecCheckSimPuk;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    new-instance v2, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPukView$SecCheckSimPuk$o7ljctZ2gXNpZiZwEKFrkljhLI0;

    invoke-direct {v2, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPukView$SecCheckSimPuk$o7ljctZ2gXNpZiZwEKFrkljhLI0;-><init>(Lcom/android/keyguard/KeyguardSecSimPukView$SecCheckSimPuk;)V

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSecSimPukView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
