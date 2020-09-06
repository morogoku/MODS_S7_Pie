.class Lcom/android/systemui/qs/tiles/VoLteTile$3;
.super Landroid/telephony/PhoneStateListener;
.source "VoLteTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/VoLteTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/VoLteTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/VoLteTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VoLteTile$3;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$3;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$402(Lcom/android/systemui/qs/tiles/VoLteTile;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$3;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$500(Lcom/android/systemui/qs/tiles/VoLteTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged() state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mInCall:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile$3;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$400(Lcom/android/systemui/qs/tiles/VoLteTile;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$3;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState()V

    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$3;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$600(Lcom/android/systemui/qs/tiles/VoLteTile;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const-string v1, "epdg"

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile$3;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$900(Lcom/android/systemui/qs/tiles/VoLteTile;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDataConnectionStateChanged() inWifiCall:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile$3;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$800(Lcom/android/systemui/qs/tiles/VoLteTile;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile$3;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$802(Lcom/android/systemui/qs/tiles/VoLteTile;Z)Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile$3;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState()V

    :cond_0
    return-void
.end method

.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$3;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$600(Lcom/android/systemui/qs/tiles/VoLteTile;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const-string v1, "epdg"

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile$3;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$700(Lcom/android/systemui/qs/tiles/VoLteTile;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreciseCallStateChanged() inWifiCall:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile$3;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$800(Lcom/android/systemui/qs/tiles/VoLteTile;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile$3;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$802(Lcom/android/systemui/qs/tiles/VoLteTile;Z)Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile$3;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState()V

    :cond_0
    return-void
.end method

.method public onVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$3;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$600(Lcom/android/systemui/qs/tiles/VoLteTile;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const-string v1, "epdg"

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile$3;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$1000(Lcom/android/systemui/qs/tiles/VoLteTile;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onVoLteServiceStateChanged() inWifiCall:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile$3;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$800(Lcom/android/systemui/qs/tiles/VoLteTile;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile$3;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$802(Lcom/android/systemui/qs/tiles/VoLteTile;Z)Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile$3;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState()V

    :cond_0
    return-void
.end method
