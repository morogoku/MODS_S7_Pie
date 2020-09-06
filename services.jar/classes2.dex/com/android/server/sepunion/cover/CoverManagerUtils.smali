.class final Lcom/android/server/sepunion/cover/CoverManagerUtils;
.super Ljava/lang/Object;
.source "CoverManagerUtils.java"


# static fields
.field private static BOOSTING_TIMEOUT:I = 0x0

.field static final COVER_TOUCH_REGION_X:Ljava/lang/String; = "get_x_num"

.field static final COVER_TOUCH_REGION_Y:Ljava/lang/String; = "get_y_num"

.field static final PATH_FILE_COVER_COLOR:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_check_color"

.field static final PATH_FILE_COVER_DETECT:Ljava/lang/String; = "/sys/bus/w1/devices/w1_bus_master1/w1_master_check_detect"

.field static final PATH_FILE_COVER_LED_PWR_QCOM:Ljava/lang/String; = "/sys/class/sec/expander/expgpio"

.field static final PATH_FILE_COVER_LED_PWR_SLSI:Ljava/lang/String; = "/sys/class/sec/ledcover/cover_pwr"

.field static final PATH_FILE_COVER_LED_UART_QCOM:Ljava/lang/String; = "/dev/ttyHSL1"

.field static final PATH_FILE_COVER_LED_UART_SLSI:Ljava/lang/String; = "/dev/ttySAC2"

.field static final PATH_FILE_COVER_MODEL:Ljava/lang/String; = "/sys/bus/w1/devices/w1_bus_master1/w1_master_check_model"

.field static final PATH_FILE_COVER_SERIAL_NUMBER:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_check_sn"

.field static final PATH_FILE_COVER_TYPE:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_check_id"

.field static final PATH_FILE_COVER_VERIFY:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_verify_mac"

.field static final PATH_FILE_COVER_VERIFY_FAKE:Ljava/lang/String; = "/sys/bus/w1/devices/w1_bus_master1/w1_master_cf"

.field static final PATH_FILE_PARTIAL_DISP:Ljava/lang/String; = "/sys/class/lcd/panel/partial_disp"

.field private static final TAG:Ljava/lang/String;

.field private static sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

.field private static sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

.field private static sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/sepunion/cover/CoverManagerUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    sput-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    sput-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v0, 0x7d0

    sput v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->BOOSTING_TIMEOUT:I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getTouchChannelCount(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->readCmdResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_9} :catch_b

    move v0, v1

    goto :goto_f

    :catch_b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_f
    return v0
.end method

.method static getValueFromSysFS(Ljava/lang/String;I)I
    .registers 9

    move v0, p1

    invoke-static {p0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    const/4 v1, 0x0

    :try_start_8
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    const/16 v2, 0xf

    new-array v2, v2, [C

    invoke-virtual {v1, v2}, Ljava/io/FileReader;->read([C)I

    move-result v3

    if-lez v3, :cond_25

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    add-int/lit8 v6, v3, -0x1

    invoke-direct {v4, v2, v5, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_24} :catch_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_24} :catch_35
    .catchall {:try_start_8 .. :try_end_24} :catchall_2c

    move v0, v4

    :cond_25
    nop

    :try_start_26
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    :goto_29
    goto :goto_45

    :catch_2a
    move-exception v2

    goto :goto_29

    :catchall_2c
    move-exception v2

    if-eqz v1, :cond_34

    :try_start_2f
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_34

    :catch_33
    move-exception v3

    :cond_34
    :goto_34
    throw v2

    :catch_35
    move-exception v2

    move v0, p1

    if-eqz v1, :cond_45

    :try_start_39
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    goto :goto_29

    :catch_3d
    move-exception v2

    move v0, p1

    if-eqz v1, :cond_45

    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_44} :catch_2a

    goto :goto_29

    :cond_45
    :goto_45
    sget-boolean v1, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v1, :cond_5f

    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getValueFromSysFS() ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    return v0
.end method

.method static getValueFromSysFS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    move-object v0, p1

    invoke-static {p0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    const/4 v1, 0x0

    :try_start_8
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    const/16 v2, 0xf

    new-array v2, v2, [C

    invoke-virtual {v1, v2}, Ljava/io/FileReader;->read([C)I

    move-result v3

    if-lez v3, :cond_21

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    add-int/lit8 v6, v3, -0x1

    invoke-direct {v4, v2, v5, v6}, Ljava/lang/String;-><init>([CII)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_20} :catch_39
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_20} :catch_31
    .catchall {:try_start_8 .. :try_end_20} :catchall_28

    move-object v0, v4

    :cond_21
    nop

    :try_start_22
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26

    :goto_25
    goto :goto_41

    :catch_26
    move-exception v2

    goto :goto_25

    :catchall_28
    move-exception v2

    if-eqz v1, :cond_30

    :try_start_2b
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v3

    :cond_30
    :goto_30
    throw v2

    :catch_31
    move-exception v2

    move-object v0, p1

    if-eqz v1, :cond_41

    :try_start_35
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    goto :goto_25

    :catch_39
    move-exception v2

    move-object v0, p1

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_40} :catch_26

    goto :goto_25

    :cond_41
    :goto_41
    sget-boolean v1, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v1, :cond_5b

    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getValueFromSysFS() ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    return-object v0
.end method

.method static isFileExists(Ljava/lang/String;)Z
    .registers 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method static isFriendsCover(Lcom/samsung/android/cover/CoverState;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getFriendsType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_d

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    nop

    :cond_d
    :goto_d
    return v1
.end method

.method static isSamsungCover(Lcom/samsung/android/cover/CoverState;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getFriendsType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_f

    if-nez v1, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    return v2
.end method

.method static needsCPUBoostCover(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_f

    const/4 v1, 0x3

    if-eq p0, v1, :cond_f

    const/4 v1, 0x6

    if-eq p0, v1, :cond_f

    const/16 v1, 0x8

    if-eq p0, v1, :cond_f

    const/4 v0, 0x0

    return v0

    :cond_f
    return v0
.end method

.method static performCPUBoostCover(Landroid/content/Context;)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "performCPUBoostCover called"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    const/4 v1, 0x0

    if-nez v0, :cond_2e

    const-string v0, "COVER_BOOSTER"

    const/16 v2, 0xc

    invoke-static {p0, v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v0

    if-eqz v0, :cond_2e

    sget-object v2, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    :cond_2e
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_43

    :try_start_32
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    sget v2, Lcom/android/server/sepunion/cover/CoverManagerUtils;->BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_39} :catch_3a

    goto :goto_43

    :catch_3a
    move-exception v0

    sget-object v2, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sCoverCpuBooster.acquire is failed"

    invoke-static {v2, v3, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_43
    :goto_43
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_6c

    const-string v0, "COVER_CORE_BOOSTER"

    const/16 v2, 0xe

    invoke-static {p0, v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_6c

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v0

    if-eqz v0, :cond_6c

    array-length v2, v0

    if-lez v2, :cond_6c

    aget v2, v0, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_6c

    sget-object v2, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    :cond_6c
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_81

    :try_start_70
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    sget v2, Lcom/android/server/sepunion/cover/CoverManagerUtils;->BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_77} :catch_78

    goto :goto_81

    :catch_78
    move-exception v0

    sget-object v2, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sCoverCoreNumLockHelper.acquire is failed"

    invoke-static {v2, v3, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_81
    :goto_81
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_a5

    const-string v0, "COVER_BUS_BOOSTER"

    const/16 v2, 0x13

    invoke-static {p0, v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_a5

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v0

    if-eqz v0, :cond_a5

    array-length v2, v0

    if-lez v2, :cond_a5

    sget-object v2, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

    aget v1, v0, v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    :cond_a5
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_ba

    :try_start_a9
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

    sget v1, Lcom/android/server/sepunion/cover/CoverManagerUtils;->BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_b0} :catch_b1

    goto :goto_ba

    :catch_b1
    move-exception v0

    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sCoverBusBooster.acquire is failed"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_ba
    :goto_ba
    return-void
.end method

.method static readCmdResult(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***readCmdResult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    const-string v1, ""

    invoke-static {p0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->writeCmd(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->readStatus()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->readResult()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    if-eqz v1, :cond_44

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_40

    aget-object v1, v2, v4

    goto :goto_43

    :cond_40
    const/4 v3, 0x0

    aget-object v1, v2, v3

    :goto_43
    goto :goto_5d

    :cond_44
    const-string v2, "WAITING"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    const-string/jumbo v1, "waiting"

    goto :goto_5d

    :cond_50
    const-string v2, "FAIL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    const-string v1, "fail"

    goto :goto_5d

    :cond_5b
    const-string v1, "NA"

    :goto_5d
    return-object v1
.end method

.method static readResult()Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const-string v1, "***readResult ()"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_9
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/sys/class/sec/tsp/cmd_result"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    sget-object v2, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_32} :catch_3f
    .catchall {:try_start_9 .. :try_end_32} :catchall_3d

    nop

    :try_start_33
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_3c

    :catch_37
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49

    :cond_3c
    :goto_3c
    goto :goto_49

    :catchall_3d
    move-exception v2

    goto :goto_4a

    :catch_3f
    move-exception v2

    :try_start_40
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_3d

    if-eqz v1, :cond_3c

    :try_start_45
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_37

    goto :goto_3c

    :goto_49
    return-object v0

    :goto_4a
    nop

    if-eqz v1, :cond_56

    :try_start_4d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_56

    :catch_51
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_56
    :goto_56
    throw v2
.end method

.method static readStatus()Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const-string v1, "***readStatus ()"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_9
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/sys/class/sec/tsp/cmd_status"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    sget-object v2, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_32} :catch_3f
    .catchall {:try_start_9 .. :try_end_32} :catchall_3d

    nop

    :try_start_33
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_3c

    :catch_37
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49

    :cond_3c
    :goto_3c
    goto :goto_49

    :catchall_3d
    move-exception v2

    goto :goto_4a

    :catch_3f
    move-exception v2

    :try_start_40
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_3d

    if-eqz v1, :cond_3c

    :try_start_45
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_37

    goto :goto_3c

    :goto_49
    return-object v0

    :goto_4a
    nop

    if-eqz v1, :cond_56

    :try_start_4d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_56

    :catch_51
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_56
    :goto_56
    throw v2
.end method

.method static sendCoverInformationToAgent(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/Feature;->isNfcAuthEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    move-object v0, p1

    goto :goto_14

    :cond_d
    const-string v1, "/sys/devices/w1_bus_master1/w1_master_check_sn"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_14
    if-eqz v0, :cond_3e

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.intent.action.COVER_ATTACHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.android.soagent"

    const-string v3, "com.sec.android.soagent.receiver.PhoneCoverReceiver"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "isBoot"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "serialNumber"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "com.samsung.android.permission.COVER"

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendCoverInformationToAgent : broadcast !!"

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    sget-boolean v1, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v1, :cond_59

    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendCoverInformationToAgent : serialNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    return-void
.end method

.method static declared-synchronized setPartialScreen(ZI)V
    .registers 8

    const-class v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;

    monitor-enter v0

    :try_start_3
    const-string v1, "0 0"

    if-eqz p0, :cond_1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    :cond_1d
    sget-object v2, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parameters="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_66

    const/4 v2, 0x0

    :try_start_35
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    const-string v5, "/sys/class/lcd/panel/partial_disp"

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v2, v3

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_45} :catch_4e
    .catchall {:try_start_35 .. :try_end_45} :catchall_4c

    nop

    :try_start_46
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a
    .catchall {:try_start_46 .. :try_end_49} :catchall_66

    :goto_49
    goto :goto_5c

    :catch_4a
    move-exception v3

    goto :goto_49

    :catchall_4c
    move-exception v3

    goto :goto_5e

    :catch_4e
    move-exception v3

    :try_start_4f
    sget-object v4, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const-string v5, "Failed to write partial_disp"

    invoke-static {v4, v5}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_4c

    if-eqz v2, :cond_5c

    :try_start_58
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_4a
    .catchall {:try_start_58 .. :try_end_5b} :catchall_66

    goto :goto_49

    :cond_5c
    :goto_5c
    monitor-exit v0

    return-void

    :goto_5e
    if-eqz v2, :cond_65

    :try_start_60
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64
    .catchall {:try_start_60 .. :try_end_63} :catchall_66

    goto :goto_65

    :catch_64
    move-exception v4

    :cond_65
    :goto_65
    :try_start_65
    throw v3
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_66

    :catchall_66
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static showRuggedizedPopup(Landroid/content/Context;ZZ)V
    .registers 7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.app.popupuireceiver"

    const-string v2, "com.sec.android.app.popupuireceiver.SviewCover"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/Feature;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, "/sys/bus/w1/devices/w1_bus_master1/w1_master_cf"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    if-nez v1, :cond_2b

    const-string v2, "com.sec.android.app.popupuireceiver"

    const-string v3, "com.sec.android.app.popupuireceiver.SviewCoverFake"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2b
    const-string/jumbo v2, "verified"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_31
    const-string v1, "isBoot"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "attached"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_40
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_45
    .catch Landroid/content/ActivityNotFoundException; {:try_start_40 .. :try_end_45} :catch_46

    goto :goto_4f

    :catch_46
    move-exception v1

    sget-object v2, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "showRuggedizedPopup : ActivityNotFoundException !!"

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4f
    return-void
.end method

.method static writeCmd(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeCmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_18
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "/sys/class/sec/tsp/cmd"

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v1

    invoke-virtual {v0, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "write("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_44} :catch_51
    .catchall {:try_start_18 .. :try_end_44} :catchall_4f

    nop

    :try_start_45
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_4e

    :catch_49
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5b

    :cond_4e
    :goto_4e
    goto :goto_5b

    :catchall_4f
    move-exception v1

    goto :goto_5c

    :catch_51
    move-exception v1

    :try_start_52
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_4f

    if-eqz v0, :cond_4e

    :try_start_57
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_49

    goto :goto_4e

    :goto_5b
    return-void

    :goto_5c
    nop

    if-eqz v0, :cond_68

    :try_start_5f
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_68

    :catch_63
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_68
    :goto_68
    throw v1
.end method
