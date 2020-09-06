.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayContent$2WHDCyBOor7v9c5styVT4Qjvl58;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/DisplayContent;

.field private final synthetic f$1:Landroid/graphics/Region;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Region;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$2WHDCyBOor7v9c5styVT4Qjvl58;->f$0:Lcom/android/server/wm/DisplayContent;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$2WHDCyBOor7v9c5styVT4Qjvl58;->f$1:Landroid/graphics/Region;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$2WHDCyBOor7v9c5styVT4Qjvl58;->f$0:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$2WHDCyBOor7v9c5styVT4Qjvl58;->f$1:Landroid/graphics/Region;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/DisplayContent;->lambda$setTouchExcludeRegionForSplitScreenMode$28(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Region;Lcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method
