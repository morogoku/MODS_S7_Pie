.class public Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;
.super Ljava/lang/Object;
.source "HeadSetOverVoltageObserver.java"


# static fields
.field private static final MSG_DISPLAY_TOAST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HeadSetOverVoltageObserver"

.field private static final TOAST_MSG:Ljava/lang/String; = "Connected USB device isn\'t supported"

.field private static final UEVENT_FIELD:Ljava/lang/String; = "SWITCH_STATE"

.field private static final UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/sec/ccic"

.field private static final UEVENT_VALUE:Ljava/lang/String; = "115"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mUEventObserver:Landroid/os/UEventObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver$1;-><init>(Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;)V

    iput-object v0, p0, Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;->mUEventObserver:Landroid/os/UEventObserver;

    new-instance v0, Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver$2;

    invoke-direct {v0, p0}, Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver$2;-><init>(Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;)V

    iput-object v0, p0, Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;->mHandler:Landroid/os/Handler;

    const-string v0, "HeadSetOverVoltageObserver"

    const-string v1, "Started HeadSetOverVoltageObserver"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/sec/ccic"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method
