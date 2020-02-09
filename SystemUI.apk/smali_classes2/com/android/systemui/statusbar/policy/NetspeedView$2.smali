.class Lcom/android/systemui/statusbar/policy/NetspeedView$2;
.super Landroid/content/BroadcastReceiver;
.source "NetspeedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetspeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$2;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$2;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$600(Lcom/android/systemui/statusbar/policy/NetspeedView;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$502(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$500()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$702(Z)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$702(Z)Z

    :cond_1
    :goto_0
    const-string v1, "NetworkSpeedView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChange - mVpnConnected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$700()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mActiveInterface = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$500()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$2;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;Lcom/android/systemui/statusbar/policy/NetspeedView$1;)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;->start()V

    return-void
.end method
