.class public Lcom/android/server/desktopmode/DockManager$DockMsgState;
.super Ljava/lang/Object;
.source "DockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DockMsgState"
.end annotation


# instance fields
.field private mMsgState:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(IIIII)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->msgStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    if-eqz p2, :cond_2c

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->msgStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    if-eqz p3, :cond_3d

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->msgStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    if-eqz p4, :cond_4e

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p4}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->msgStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    if-eqz p5, :cond_5f

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p5}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->msgStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5f
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/desktopmode/DockManager$DockMsgState;)Landroid/util/ArrayMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private msgStateToString(I)Ljava/lang/String;
    .registers 4

    sparse-switch p1, :sswitch_data_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_15
    const-string v0, "MSG_DOCK_FAST_CHARGING_EXTRA_ERROR_UPDATED"

    return-object v0

    :sswitch_18
    const-string v0, "MSG_DOCK_FAST_CHARGING_EXTRA_UNDEFINED"

    return-object v0

    :sswitch_1b
    const-string v0, "MSG_DOCK_FAST_CHARGING_VERSION_DSVERSION_UPDATED"

    return-object v0

    :sswitch_1e
    const-string v0, "MSG_DOCK_FAST_CHARGING_VERSION_UNDEFINED"

    return-object v0

    :sswitch_21
    const-string v0, "MSG_DOCK_FAST_CHARGING_ERROR"

    return-object v0

    :sswitch_24
    const-string v0, "MSG_DOCK_FAST_CHARGING_ERROR_UNDEFINED"

    return-object v0

    :sswitch_27
    const-string v0, "MSG_DOCK_FAST_CHARGING_RESPONSE_SET_ENABLE"

    return-object v0

    :sswitch_2a
    const-string v0, "MSG_DOCK_FAST_CHARGING_RESPONSE_POWER_INFO"

    return-object v0

    :sswitch_2d
    const-string v0, "MSG_DOCK_FAST_CHARGING_RESPONSE_UNDEFINED"

    return-object v0

    :sswitch_30
    const-string v0, "MSG_DOCK_FAST_CHARGING_REQUEST_DESTROY"

    return-object v0

    :sswitch_33
    const-string v0, "MSG_DOCK_FAST_CHARGING_REQUEST_SET_ENABLE"

    return-object v0

    :sswitch_36
    const-string v0, "MSG_DOCK_FAST_CHARGING_REQUEST_POWER_INFO"

    return-object v0

    :sswitch_39
    const-string v0, "MSG_DOCK_FAST_CHARGING_REQUEST_CREATE"

    return-object v0

    :sswitch_3c
    const-string v0, "MSG_DOCK_FAST_CHARGING_REQUEST_UNDEFINED"

    return-object v0

    nop

    :sswitch_data_40
    .sparse-switch
        0xc8 -> :sswitch_3c
        0xc9 -> :sswitch_39
        0xca -> :sswitch_36
        0xcb -> :sswitch_33
        0xcc -> :sswitch_30
        0xd2 -> :sswitch_2d
        0xd3 -> :sswitch_2a
        0xd4 -> :sswitch_27
        0xdc -> :sswitch_24
        0xdd -> :sswitch_21
        0xe6 -> :sswitch_1e
        0xe7 -> :sswitch_1b
        0xf0 -> :sswitch_18
        0xf1 -> :sswitch_15
    .end sparse-switch
.end method

.method private msgTypeToString(I)Ljava/lang/String;
    .registers 4

    packed-switch p1, :pswitch_data_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_15
    const-string v0, "MSG_TYPE_EXTRA"

    return-object v0

    :pswitch_18
    const-string v0, "MSG_TYPE_VERSION"

    return-object v0

    :pswitch_1b
    const-string v0, "MSG_TYPE_ERROR"

    return-object v0

    :pswitch_1e
    const-string v0, "MSG_TYPE_RESPONSE"

    return-object v0

    :pswitch_21
    const-string v0, "MSG_TYPE_REQUEST"

    return-object v0

    :pswitch_data_24
    .packed-switch 0x64
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method public setLast(IILjava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->msgStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->msgTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
