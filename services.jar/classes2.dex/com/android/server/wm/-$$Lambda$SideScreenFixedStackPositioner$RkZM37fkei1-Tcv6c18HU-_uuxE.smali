.class public final synthetic Lcom/android/server/wm/-$$Lambda$SideScreenFixedStackPositioner$RkZM37fkei1-Tcv6c18HU-_uuxE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/SideScreenFixedStackPositioner;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SideScreenFixedStackPositioner;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$SideScreenFixedStackPositioner$RkZM37fkei1-Tcv6c18HU-_uuxE;->f$0:Lcom/android/server/wm/SideScreenFixedStackPositioner;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$SideScreenFixedStackPositioner$RkZM37fkei1-Tcv6c18HU-_uuxE;->f$0:Lcom/android/server/wm/SideScreenFixedStackPositioner;

    invoke-static {v0}, Lcom/android/server/wm/SideScreenFixedStackPositioner;->lambda$onDragEnded$0(Lcom/android/server/wm/SideScreenFixedStackPositioner;)V

    return-void
.end method