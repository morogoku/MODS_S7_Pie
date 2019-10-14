.class public final synthetic Lcom/android/server/wm/-$$Lambda$SideScreenSlideOverStackPositioner$5-OKO0NvYaWfBxsgPMZMnn4jHHs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/SideScreenSlideOverStackPositioner;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SideScreenSlideOverStackPositioner;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$SideScreenSlideOverStackPositioner$5-OKO0NvYaWfBxsgPMZMnn4jHHs;->f$0:Lcom/android/server/wm/SideScreenSlideOverStackPositioner;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$SideScreenSlideOverStackPositioner$5-OKO0NvYaWfBxsgPMZMnn4jHHs;->f$0:Lcom/android/server/wm/SideScreenSlideOverStackPositioner;

    invoke-static {v0}, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;->lambda$onDragEnded$1(Lcom/android/server/wm/SideScreenSlideOverStackPositioner;)V

    return-void
.end method
