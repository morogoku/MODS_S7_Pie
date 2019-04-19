.class abstract Lcom/android/keyguard/KeyguardSecSimPinView$SecCheckSimPin;
.super Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;
.source "KeyguardSecSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecSimPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "SecCheckSimPin"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecSimPinView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecSimPinView;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinView$SecCheckSimPin;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;-><init>(Lcom/android/keyguard/KeyguardSimPinView;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$run$0(Lcom/android/keyguard/KeyguardSecSimPinView$SecCheckSimPin;[I)V
    .locals 2

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecSimPinView$SecCheckSimPin;->onSimCheckResponse(II)V

    return-void
.end method

.method public static synthetic lambda$run$1(Lcom/android/keyguard/KeyguardSecSimPinView$SecCheckSimPin;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecSimPinView$SecCheckSimPin;->onSimCheckResponse(II)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    const-string v0, "KeyguardSecSimPinView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call supplyPinReportResultForSubscriber(subid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardSecSimPinView$SecCheckSimPin;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/keyguard/KeyguardSecSimPinView$SecCheckSimPin;->mSubId:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSimPinView$SecCheckSimPin;->mPin:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v1

    const-string v2, "KeyguardSecSimPinView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "supplyPinReportResult returned: "

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

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSimPinView$SecCheckSimPin;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    new-instance v3, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPinView$SecCheckSimPin$FbwCfPWm5AXKlomKbmF8M85GZEk;

    invoke-direct {v3, p0, v1}, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPinView$SecCheckSimPin$FbwCfPWm5AXKlomKbmF8M85GZEk;-><init>(Lcom/android/keyguard/KeyguardSecSimPinView$SecCheckSimPin;[I)V

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardSecSimPinView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KeyguardSecSimPinView"

    const-string v2, "RemoteException for supplyPinReportResult:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPinView$SecCheckSimPin;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    new-instance v2, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPinView$SecCheckSimPin$X9GCN9l5VQNtkSggT-tjcKT0P5w;

    invoke-direct {v2, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPinView$SecCheckSimPin$X9GCN9l5VQNtkSggT-tjcKT0P5w;-><init>(Lcom/android/keyguard/KeyguardSecSimPinView$SecCheckSimPin;)V

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSecSimPinView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
