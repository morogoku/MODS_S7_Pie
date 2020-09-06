.class public final synthetic Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$5aUgSVQf_hAssRy5ZF5qWkt_oMA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/SideScreenManagerInternal;

.field private final synthetic f$1:Landroid/graphics/Rect;

.field private final synthetic f$2:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SideScreenManagerInternal;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$5aUgSVQf_hAssRy5ZF5qWkt_oMA;->f$0:Lcom/android/server/wm/SideScreenManagerInternal;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$5aUgSVQf_hAssRy5ZF5qWkt_oMA;->f$1:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$5aUgSVQf_hAssRy5ZF5qWkt_oMA;->f$2:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$5aUgSVQf_hAssRy5ZF5qWkt_oMA;->f$0:Lcom/android/server/wm/SideScreenManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$5aUgSVQf_hAssRy5ZF5qWkt_oMA;->f$1:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$5aUgSVQf_hAssRy5ZF5qWkt_oMA;->f$2:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/SideScreenManagerInternal;->lambda$setMinimizedDockedStack$4(Lcom/android/server/wm/SideScreenManagerInternal;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method
