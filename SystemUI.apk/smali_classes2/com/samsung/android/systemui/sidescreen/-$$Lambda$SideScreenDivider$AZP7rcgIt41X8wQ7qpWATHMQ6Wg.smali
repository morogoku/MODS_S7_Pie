.class public final synthetic Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenDivider$AZP7rcgIt41X8wQ7qpWATHMQ6Wg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;

.field private final synthetic f$1:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenDivider$AZP7rcgIt41X8wQ7qpWATHMQ6Wg;->f$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;

    iput-object p2, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenDivider$AZP7rcgIt41X8wQ7qpWATHMQ6Wg;->f$1:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenDivider$AZP7rcgIt41X8wQ7qpWATHMQ6Wg;->f$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenDivider$AZP7rcgIt41X8wQ7qpWATHMQ6Wg;->f$1:Landroid/view/MotionEvent;

    invoke-static {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->lambda$onDetecting$3(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;Landroid/view/MotionEvent;)V

    return-void
.end method
