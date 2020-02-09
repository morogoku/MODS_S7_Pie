.class public final synthetic Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$Rke_015mggjo6nuQ1SKTPqNgqB4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$Rke_015mggjo6nuQ1SKTPqNgqB4;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$Rke_015mggjo6nuQ1SKTPqNgqB4;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$Rke_015mggjo6nuQ1SKTPqNgqB4;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$Rke_015mggjo6nuQ1SKTPqNgqB4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$Rke_015mggjo6nuQ1SKTPqNgqB4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p1}, Lcom/android/server/wm/SamsungWindowManagerService;->lambda$updateForcedDisplaySizeDensityLocked$1(Lcom/android/server/wm/WindowState;)V

    return-void
.end method
