.class final Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;
.super Ljava/lang/Object;
.source "SemDeviceInfoManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemDeviceInfoManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListenerContainer"
.end annotation


# instance fields
.field private final mContentObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field final mCustomEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;",
            ">;"
        }
    .end annotation
.end field

.field final mIntentActionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;",
            ">;"
        }
    .end annotation
.end field

.field final mUriEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;",
            ">;"
        }
    .end annotation
.end field

.field final mUserId:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mContentObservers:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mContentReceivers:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    iput p1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mUserId:I

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mContentReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mContentObservers:Ljava/util/HashMap;

    return-object v0
.end method
