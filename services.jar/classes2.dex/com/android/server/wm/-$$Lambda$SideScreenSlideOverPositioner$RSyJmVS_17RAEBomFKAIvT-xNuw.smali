.class public final synthetic Lcom/android/server/wm/-$$Lambda$SideScreenSlideOverPositioner$RSyJmVS_17RAEBomFKAIvT-xNuw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/SideScreenSlideOverPositioner;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SideScreenSlideOverPositioner;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$SideScreenSlideOverPositioner$RSyJmVS_17RAEBomFKAIvT-xNuw;->f$0:Lcom/android/server/wm/SideScreenSlideOverPositioner;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$SideScreenSlideOverPositioner$RSyJmVS_17RAEBomFKAIvT-xNuw;->f$0:Lcom/android/server/wm/SideScreenSlideOverPositioner;

    invoke-static {v0}, Lcom/android/server/wm/SideScreenSlideOverPositioner;->lambda$onDragEnded$1(Lcom/android/server/wm/SideScreenSlideOverPositioner;)V

    return-void
.end method
