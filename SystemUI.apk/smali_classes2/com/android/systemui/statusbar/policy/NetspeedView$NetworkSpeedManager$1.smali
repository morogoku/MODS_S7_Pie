.class Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;
.super Landroid/os/Handler;
.source "NetspeedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mBeforeSpd:J

.field private mSpd:J

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0xbb8

    const/4 v3, 0x2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$500()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$500()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mSpd:J

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mSpd:J

    :goto_0
    const-string v0, ""

    iget-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mSpd:J

    iget-wide v6, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mBeforeSpd:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    const/high16 v5, 0x44800000    # 1024.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    iget-wide v5, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mSpd:J

    iput-wide v5, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mBeforeSpd:J

    float-to-double v5, v4

    const-wide/16 v7, 0x0

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_1

    const-string v0, "0\nK/s"

    goto :goto_1

    :cond_1
    float-to-double v5, v4

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    cmpg-double v5, v5, v7

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gez v5, :cond_2

    const-string v5, "%.2f\nK/s"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    float-to-double v8, v4

    const-wide v10, 0x408f400000000000L    # 1000.0

    cmpg-double v5, v8, v10

    if-gez v5, :cond_3

    const-string v5, "%.1f\nK/s"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    float-to-double v8, v4

    const-wide/high16 v10, 0x40f9000000000000L    # 102400.0

    cmpg-double v5, v8, v10

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    if-gez v5, :cond_4

    const-string v5, "%.2f\nM/s"

    new-array v7, v7, [Ljava/lang/Object;

    float-to-double v10, v4

    div-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v5, "%.1f\nM/s"

    new-array v7, v7, [Ljava/lang/Object;

    float-to-double v10, v4

    div-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->countObservers()I

    move-result v5

    if-lez v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->access$1000(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->notifyObservers(Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    :pswitch_1
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$700()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$500()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$500()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mBeforeSpd:J

    goto :goto_2

    :cond_5
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mBeforeSpd:J

    :goto_2
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->sendEmptyMessageDelayed(IJ)Z

    nop

    :cond_6
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
