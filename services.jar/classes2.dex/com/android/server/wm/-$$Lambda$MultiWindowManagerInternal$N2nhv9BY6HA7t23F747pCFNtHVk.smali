.class public final synthetic Lcom/android/server/wm/-$$Lambda$MultiWindowManagerInternal$N2nhv9BY6HA7t23F747pCFNtHVk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/MultiWindowManagerInternal;

.field private final synthetic f$1:Lcom/android/server/wm/DisplayContent;

.field private final synthetic f$2:Landroid/graphics/Region;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiWindowManagerInternal;Lcom/android/server/wm/DisplayContent;Landroid/graphics/Region;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$MultiWindowManagerInternal$N2nhv9BY6HA7t23F747pCFNtHVk;->f$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$MultiWindowManagerInternal$N2nhv9BY6HA7t23F747pCFNtHVk;->f$1:Lcom/android/server/wm/DisplayContent;

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$MultiWindowManagerInternal$N2nhv9BY6HA7t23F747pCFNtHVk;->f$2:Landroid/graphics/Region;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$MultiWindowManagerInternal$N2nhv9BY6HA7t23F747pCFNtHVk;->f$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$MultiWindowManagerInternal$N2nhv9BY6HA7t23F747pCFNtHVk;->f$1:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$MultiWindowManagerInternal$N2nhv9BY6HA7t23F747pCFNtHVk;->f$2:Landroid/graphics/Region;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/wm/MultiWindowManagerInternal;->lambda$addTouchExcludeRegionForAboveWindowsLocked$0(Lcom/android/server/wm/MultiWindowManagerInternal;Lcom/android/server/wm/DisplayContent;Landroid/graphics/Region;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
