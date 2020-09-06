.class Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "A11YBrocastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 18

    move-object v1, p0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, -0x2

    const/4 v4, 0x4

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_c6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    if-eq v0, v9, :cond_1e

    return-void

    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v9, "color_blind"

    invoke-static {v0, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v10, "color_lens_switch"

    invoke-static {v0, v10, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v9, v8, :cond_69

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v11, "color_adjustment_type"

    invoke-static {v0, v11, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v12, "color_blind_test"

    invoke-static {v0, v12, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eq v11, v4, :cond_4c

    if-ne v11, v5, :cond_61

    :cond_4c
    if-ne v12, v8, :cond_61

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "color_blind_user_parameter"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    move v4, v0

    :try_start_59
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, v8, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->semSetColorBlind(ZF)Z
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5e} :catch_5f

    goto :goto_60

    :catch_5f
    move-exception v0

    :goto_60
    goto :goto_68

    :cond_61
    :try_start_61
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, v8, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->semSetColorBlind(ZF)Z
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_66} :catch_67

    goto :goto_68

    :catch_67
    move-exception v0

    :goto_68
    goto :goto_84

    :cond_69
    if-ne v10, v8, :cond_84

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "color_lens_type"

    invoke-static {v0, v4, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "color_lens_opacity"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iget-object v5, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v5, v0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->semEnableMdnieColorFilter(II)Z

    :cond_84
    :goto_84
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "flash_notification"

    invoke-static {v0, v4, v7, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_99

    move v7, v8

    nop

    :cond_99
    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->isLightFlashNotiEnabled:Z
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$702(Z)Z

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->isLightFlashNotiEnabled:Z
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700()Z

    move-result v0

    if-eqz v0, :cond_a8

    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->checkTorchLight()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$900(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    goto :goto_c5

    :cond_a8
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCameraManager:Landroid/hardware/camera2/CameraManager;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/hardware/camera2/CameraManager;

    move-result-object v0

    if-eqz v0, :cond_c5

    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCameraManager:Landroid/hardware/camera2/CameraManager;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/hardware/camera2/CameraManager;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1100(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/hardware/camera2/CameraManager$TorchCallback;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraManager;->unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCameraManager:Landroid/hardware/camera2/CameraManager;
    invoke-static {v0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1002(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/hardware/camera2/CameraManager;)Landroid/hardware/camera2/CameraManager;

    :cond_c5
    :goto_c5
    return-void

    :cond_c6
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1de

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v9, "finger_magnifier"

    invoke-static {v0, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v9, "color_blind"

    invoke-static {v0, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v10, "color_lens_switch"

    invoke-static {v0, v10, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v11, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "color_blind_cvdtype"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v13

    const/4 v14, 0x3

    invoke-static {v11, v12, v14, v13}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    iput v11, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCVDType:I

    if-ne v9, v8, :cond_14e

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "color_blind_test"

    invoke-static {v0, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "color_adjustment_type"

    invoke-static {v0, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v5, :cond_127

    if-eq v7, v4, :cond_127

    :try_start_11f
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, v8, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->semSetColorBlind(ZF)Z
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_124} :catch_125

    goto :goto_14c

    :catch_125
    move-exception v0

    goto :goto_14c

    :cond_127
    if-ne v3, v8, :cond_14c

    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCVDType:I

    if-eq v0, v14, :cond_14c

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "color_blind_cvdseverity"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "color_blind_user_parameter"

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    move v5, v0

    :try_start_144
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, v8, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->semSetColorBlind(ZF)Z
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_149} :catch_14a

    goto :goto_14b

    :catch_14a
    move-exception v0

    :goto_14b
    nop

    :cond_14c
    :goto_14c
    goto/16 :goto_1bd

    :cond_14e
    if-ne v10, v8, :cond_16a

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "color_lens_type"

    invoke-static {v0, v3, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "color_lens_opacity"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v4, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v4, v0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->semEnableMdnieColorFilter(II)Z

    goto :goto_1bd

    :cond_16a
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "high_contrast"

    invoke-static {v0, v5, v7, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v8, :cond_17f

    move v0, v8

    goto :goto_180

    :cond_17f
    move v0, v7

    :goto_180
    iget-object v5, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "greyscale_mode"

    invoke-static {v5, v6, v7, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v8, :cond_195

    move v3, v8

    goto :goto_196

    :cond_195
    move v3, v7

    :goto_196
    iget-object v5, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "mDNIe"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v0, :cond_1ae

    if-eqz v3, :cond_1ae

    const/4 v4, 0x5

    invoke-virtual {v5, v4, v8}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    goto :goto_1bd

    :cond_1ae
    if-eqz v3, :cond_1b4

    invoke-virtual {v5, v4, v8}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    goto :goto_1bd

    :cond_1b4
    if-eqz v0, :cond_1ba

    invoke-virtual {v5, v8, v8}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    goto :goto_1bd

    :cond_1ba
    invoke-virtual {v5, v8, v7}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    :goto_1bd
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/GestureWakeup;

    move-result-object v0

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/GestureWakeup;->checkSettingCondition(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v8, :cond_1e0

    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/GestureWakeup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/GestureWakeup;->StopGestureWakeup()Z

    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/GestureWakeup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/GestureWakeup;->StartGestureWakeup()Z

    goto :goto_1e0

    :cond_1de
    move-object/from16 v3, p1

    :cond_1e0
    :goto_1e0
    const-string v0, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_216

    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/samsung/android/sepunion/SemGoodCatchManager;

    move-result-object v0

    if-nez v0, :cond_216

    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    new-instance v4, Lcom/samsung/android/sepunion/SemGoodCatchManager;

    iget-object v5, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "AccessibilityManagerService"

    const-string/jumbo v7, "toast"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mOnStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;
    invoke-static {v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1400(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/samsung/android/sepunion/SemGoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;)V

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;
    invoke-static {v0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1302(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/samsung/android/sepunion/SemGoodCatchManager;)Lcom/samsung/android/sepunion/SemGoodCatchManager;

    const-string v0, "AccessibilityManagerService"

    const-string v4, "[GoodCatch]SemGoodCatchManager is created"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_216
    return-void
.end method
