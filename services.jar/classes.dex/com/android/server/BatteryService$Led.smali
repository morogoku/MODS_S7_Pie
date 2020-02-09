.class final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Led"
.end annotation


# instance fields
.field private final mBatteryFullARGB:I

.field private final mBatteryLedOff:I

.field private final mBatteryLedOn:I

.field private final mBatteryLight:Lcom/android/server/lights/Light;

.field private final mBatteryLowARGB:I

.field private final mBatteryMediumARGB:I

.field private mLedStatus:I

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    const/4 p1, 0x3

    invoke-virtual {p3, p1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e00a4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e00a5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e00a1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e00a3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e00a2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    return-void
.end method


# virtual methods
.method public batteryCheck()V
    .registers 11

    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$6200(Lcom/android/server/BatteryService;)Landroid/hardware/health/V1_0/HealthInfo;

    move-result-object v0

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLedsHandler:Lcom/android/server/BatteryService$BatteryServiceHandler;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$7100(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$BatteryServiceHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/BatteryService$BatteryServiceHandler;->removeMessages(I)V

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_29

    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryLed:Lcom/android/server/lights/Light;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$7000(Lcom/android/server/BatteryService;)Lcom/android/server/lights/Light;

    move-result-object v3

    const/16 v4, 0xf00

    const/4 v5, 0x1

    const/16 v6, 0x1f4

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/lights/Light;->setLedsControl(IIIIII)V

    goto :goto_53

    :cond_29
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_41

    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryLed:Lcom/android/server/lights/Light;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$7000(Lcom/android/server/BatteryService;)Lcom/android/server/lights/Light;

    move-result-object v3

    const v4, 0xf0900

    const/4 v5, 0x1

    const/16 v6, 0x1f4

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/lights/Light;->setLedsControl(IIIIII)V

    goto :goto_53

    :cond_41
    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryLed:Lcom/android/server/lights/Light;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$7000(Lcom/android/server/BatteryService;)Lcom/android/server/lights/Light;

    move-result-object v3

    const/high16 v4, 0x1d0000

    const/4 v5, 0x1

    const/16 v6, 0x1f4

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/lights/Light;->setLedsControl(IIIIII)V

    :goto_53
    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLedsHandler:Lcom/android/server/BatteryService$BatteryServiceHandler;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$7100(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$BatteryServiceHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/BatteryService$BatteryServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLedsHandler:Lcom/android/server/BatteryService$BatteryServiceHandler;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$7100(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$BatteryServiceHandler;

    move-result-object v2

    const-wide/16 v3, 0xfa0

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/BatteryService$BatteryServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public clearBatteryCheck()V
    .registers 8

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clearBatteryCheck"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryLed:Lcom/android/server/lights/Light;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$7000(Lcom/android/server/BatteryService;)Lcom/android/server/lights/Light;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/lights/Light;->setLedsControl(IIIII)V

    return-void
.end method

.method public updateLightsLocked()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$6200(Lcom/android/server/BatteryService;)Landroid/hardware/health/V1_0/HealthInfo;

    move-result-object v0

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$6200(Lcom/android/server/BatteryService;)Landroid/hardware/health/V1_0/HealthInfo;

    move-result-object v1

    iget v1, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$6200(Lcom/android/server/BatteryService;)Landroid/hardware/health/V1_0/HealthInfo;

    move-result-object v2

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBootCompleted:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$2400(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-nez v3, :cond_21

    return-void

    :cond_21
    const/4 v3, 0x4

    const/4 v4, 0x0

    if-ne v3, v1, :cond_5f

    const/4 v3, 0x3

    if-eq v3, v2, :cond_32

    const/4 v3, 0x6

    if-eq v3, v2, :cond_32

    const/4 v3, 0x7

    if-eq v3, v2, :cond_32

    const/16 v3, 0x8

    if-ne v3, v2, :cond_5f

    :cond_32
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-eqz v3, :cond_5f

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    const/16 v5, 0xb

    if-eq v5, v3, :cond_53

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v3, v4, v5, v4, v4}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    iput v5, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "turn on LED for not charging"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11d

    :cond_53
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "stay LED for not charging"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11d

    :cond_5f
    const/4 v3, 0x2

    if-ne v3, v1, :cond_97

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-nez v3, :cond_97

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-eqz v3, :cond_97

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    const/16 v5, 0xa

    if-eq v5, v3, :cond_8b

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v3, v4, v5, v4, v4}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    iput v5, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "turn on LED for charging"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11d

    :cond_8b
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "stay LED for charging"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11d

    :cond_97
    const/4 v3, 0x5

    if-ne v3, v1, :cond_cd

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-nez v3, :cond_cd

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-eqz v3, :cond_cd

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    const/16 v5, 0xe

    if-eq v5, v3, :cond_c2

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v3, v4, v5, v4, v4}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    iput v5, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "turn on LED for fully charged"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11d

    :cond_c2
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "stay LED for fully charged"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11d

    :cond_cd
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$6900(Lcom/android/server/BatteryService;)I

    move-result v3

    if-gt v0, v3, :cond_108

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-nez v3, :cond_108

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-eqz v3, :cond_108

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    const/16 v5, 0xd

    if-eq v5, v3, :cond_fd

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v3, v4, v5, v4, v4}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    iput v5, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "turn on LED for low battery"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11d

    :cond_fd
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "stay LED for low battery"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11d

    :cond_108
    iget v3, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    if-eqz v3, :cond_11d

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v3}, Lcom/android/server/lights/Light;->turnOff()V

    iput v4, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "turn off LED"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11d
    :goto_11d
    return-void
.end method

.method public updateMultipleLedsLocked()V
    .registers 11

    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$6200(Lcom/android/server/BatteryService;)Landroid/hardware/health/V1_0/HealthInfo;

    move-result-object v0

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$6200(Lcom/android/server/BatteryService;)Landroid/hardware/health/V1_0/HealthInfo;

    move-result-object v1

    iget v1, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$6200(Lcom/android/server/BatteryService;)Landroid/hardware/health/V1_0/HealthInfo;

    move-result-object v2

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBootCompleted:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$2400(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-nez v3, :cond_21

    return-void

    :cond_21
    const/4 v3, 0x4

    if-ne v3, v1, :cond_48

    const/4 v3, 0x3

    if-eq v3, v2, :cond_31

    const/4 v3, 0x6

    if-eq v3, v2, :cond_31

    const/4 v3, 0x7

    if-eq v3, v2, :cond_31

    const/16 v3, 0x8

    if-ne v3, v2, :cond_48

    :cond_31
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryLed:Lcom/android/server/lights/Light;
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$7000(Lcom/android/server/BatteryService;)Lcom/android/server/lights/Light;

    move-result-object v4

    const/high16 v5, 0x1d0000

    const/4 v6, 0x1

    const/16 v7, 0x1f4

    const/16 v8, 0x1f4

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/lights/Light;->setLedsControl(IIIII)V

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/BatteryService;->mChargingError:Z

    goto :goto_af

    :cond_48
    const/4 v3, 0x2

    if-ne v3, v1, :cond_5b

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryLed:Lcom/android/server/lights/Light;
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$7000(Lcom/android/server/BatteryService;)Lcom/android/server/lights/Light;

    move-result-object v4

    const/high16 v5, 0x1d0000

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/lights/Light;->setLedsControl(IIIII)V

    goto :goto_96

    :cond_5b
    const/4 v3, 0x5

    if-ne v3, v1, :cond_6e

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryLed:Lcom/android/server/lights/Light;
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$7000(Lcom/android/server/BatteryService;)Lcom/android/server/lights/Light;

    move-result-object v4

    const/16 v5, 0xf00

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/lights/Light;->setLedsControl(IIIII)V

    goto :goto_96

    :cond_6e
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$6900(Lcom/android/server/BatteryService;)I

    move-result v3

    if-gt v0, v3, :cond_88

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryLed:Lcom/android/server/lights/Light;
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$7000(Lcom/android/server/BatteryService;)Lcom/android/server/lights/Light;

    move-result-object v4

    const/high16 v5, 0x1d0000

    const/4 v6, 0x1

    const/16 v7, 0x64

    const/16 v8, 0xf3c

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/lights/Light;->setLedsControl(IIIII)V

    goto :goto_96

    :cond_88
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryLed:Lcom/android/server/lights/Light;
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$7000(Lcom/android/server/BatteryService;)Lcom/android/server/lights/Light;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/lights/Light;->setLedsControl(IIIII)V

    :goto_96
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    iget-boolean v3, v3, Lcom/android/server/BatteryService;->mChargingError:Z

    if-eqz v3, :cond_af

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/BatteryService;->mChargingError:Z

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryLed:Lcom/android/server/lights/Light;
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$7000(Lcom/android/server/BatteryService;)Lcom/android/server/lights/Light;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/lights/Light;->setLedsControl(IIIII)V

    :cond_af
    :goto_af
    return-void
.end method
