.class public final synthetic Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$Z83KW2Ao8Xpayyqi4sMoj7FyR3w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$Z83KW2Ao8Xpayyqi4sMoj7FyR3w;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$Z83KW2Ao8Xpayyqi4sMoj7FyR3w;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$Z83KW2Ao8Xpayyqi4sMoj7FyR3w;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$Z83KW2Ao8Xpayyqi4sMoj7FyR3w;->INSTANCE:Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$Z83KW2Ao8Xpayyqi4sMoj7FyR3w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p1}, Lcom/android/server/wm/SamsungWindowManagerService;->lambda$startWallpaperRemoteAnimationIfNeededLocked$2(Lcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method
