.class public Lcom/android/systemui/popup/data/DataConnectionErrorData;
.super Ljava/lang/Object;
.source "DataConnectionErrorData.java"


# instance fields
.field private mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/popup/util/PopupUILogWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/popup/data/DataConnectionErrorData;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/popup/data/DataConnectionErrorData;)Lcom/android/systemui/popup/util/PopupUILogWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/popup/data/DataConnectionErrorData;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    return-object v0
.end method


# virtual methods
.method public getBody(I)I
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const v0, 0x7f120272

    return v0

    :pswitch_1
    const v0, 0x7f120279

    return v0

    :pswitch_2
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_0

    const v0, 0x7f120276

    goto :goto_0

    :cond_0
    const v0, 0x7f120275

    :goto_0
    return v0

    :cond_1
    const v0, 0x7f12027c

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNButton(IZ)I
    .locals 2

    const/4 v0, 0x4

    const/4 v1, -0x1

    if-eq p1, v0, :cond_0

    const v0, 0x7f12021f

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    return v1

    :pswitch_1
    return v0

    :pswitch_2
    return v0

    :cond_0
    if-eqz p2, :cond_1

    const v1, 0x7f12083d

    nop

    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPButton(IZ)I
    .locals 2

    const/4 v0, 0x4

    const v1, 0x7f120d36

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    return v1

    :pswitch_1
    const v0, 0x7f120992

    return v0

    :pswitch_2
    const v0, 0x7f120bdb

    return v0

    :cond_0
    if-eqz p2, :cond_1

    const v1, 0x7f120adb

    nop

    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPButtonClickListener(Landroid/content/Context;IZLandroid/app/PendingIntent;)Ljava/lang/Runnable;
    .locals 1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    return-object v0

    :pswitch_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/android/systemui/popup/data/DataConnectionErrorData$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/popup/data/DataConnectionErrorData$2;-><init>(Lcom/android/systemui/popup/data/DataConnectionErrorData;Landroid/content/Context;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/android/systemui/popup/data/DataConnectionErrorData$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/popup/data/DataConnectionErrorData$1;-><init>(Lcom/android/systemui/popup/data/DataConnectionErrorData;Landroid/content/Context;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/systemui/popup/data/DataConnectionErrorData$3;

    invoke-direct {v0, p0, p3, p4}, Lcom/android/systemui/popup/data/DataConnectionErrorData$3;-><init>(Lcom/android/systemui/popup/data/DataConnectionErrorData;ZLandroid/app/PendingIntent;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTitle(I)I
    .locals 2

    const/4 v0, 0x4

    const v1, 0x7f12027b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    return v1

    :pswitch_1
    const v0, 0x7f12027a

    return v0

    :pswitch_2
    const v0, 0x7f120277

    return v0

    :cond_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
