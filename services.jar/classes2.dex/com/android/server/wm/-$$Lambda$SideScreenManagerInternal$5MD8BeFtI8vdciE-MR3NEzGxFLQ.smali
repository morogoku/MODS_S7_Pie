.class public final synthetic Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$5MD8BeFtI8vdciE-MR3NEzGxFLQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/SideScreenManagerInternal;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SideScreenManagerInternal;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$5MD8BeFtI8vdciE-MR3NEzGxFLQ;->f$0:Lcom/android/server/wm/SideScreenManagerInternal;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$5MD8BeFtI8vdciE-MR3NEzGxFLQ;->f$0:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-static {v0}, Lcom/android/server/wm/SideScreenManagerInternal;->lambda$scheduleHideSideScreen$3(Lcom/android/server/wm/SideScreenManagerInternal;)V

    return-void
.end method
