.class synthetic Lcom/samsung/android/rlc/receiver/handler/SPPHandler$1;
.super Ljava/lang/Object;
.source "SPPHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/rlc/receiver/handler/SPPHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$rlc$common$Extra$PushErrorCode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->values()[Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/SPPHandler$1;->$SwitchMap$com$samsung$android$rlc$common$Extra$PushErrorCode:[I

    :try_start_9
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/SPPHandler$1;->$SwitchMap$com$samsung$android$rlc$common$Extra$PushErrorCode:[I

    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->BAD_REQUEST_FOR_PROVISION:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    :try_start_16
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/SPPHandler$1;->$SwitchMap$com$samsung$android$rlc$common$Extra$PushErrorCode:[I

    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->FAIL_TO_AUTHENTICATE:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    :try_start_23
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/SPPHandler$1;->$SwitchMap$com$samsung$android$rlc$common$Extra$PushErrorCode:[I

    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->INVALID_APP_ID:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v0

    :goto_30
    :try_start_30
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/SPPHandler$1;->$SwitchMap$com$samsung$android$rlc$common$Extra$PushErrorCode:[I

    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->INVALID_REG_ID:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    move-exception v0

    :goto_3d
    :try_start_3d
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/SPPHandler$1;->$SwitchMap$com$samsung$android$rlc$common$Extra$PushErrorCode:[I

    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->WRONG_APP_ID:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_48} :catch_49

    goto :goto_4a

    :catch_49
    move-exception v0

    :goto_4a
    :try_start_4a
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/SPPHandler$1;->$SwitchMap$com$samsung$android$rlc$common$Extra$PushErrorCode:[I

    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->WRONG_REG_ID:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_55} :catch_56

    goto :goto_57

    :catch_56
    move-exception v0

    :goto_57
    :try_start_57
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/SPPHandler$1;->$SwitchMap$com$samsung$android$rlc$common$Extra$PushErrorCode:[I

    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->UNDEFINED:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_62} :catch_63

    goto :goto_64

    :catch_63
    move-exception v0

    :goto_64
    return-void
.end method
