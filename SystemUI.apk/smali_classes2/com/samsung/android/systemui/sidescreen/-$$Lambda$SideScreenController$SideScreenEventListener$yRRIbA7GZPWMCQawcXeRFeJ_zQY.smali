.class public final synthetic Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$SideScreenEventListener$yRRIbA7GZPWMCQawcXeRFeJ_zQY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$SideScreenEventListener$yRRIbA7GZPWMCQawcXeRFeJ_zQY;->f$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;

    iput p2, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$SideScreenEventListener$yRRIbA7GZPWMCQawcXeRFeJ_zQY;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$SideScreenEventListener$yRRIbA7GZPWMCQawcXeRFeJ_zQY;->f$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;

    iget v1, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$SideScreenEventListener$yRRIbA7GZPWMCQawcXeRFeJ_zQY;->f$1:I

    invoke-static {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;->lambda$onSideScreenModeChanged$5(Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;I)V

    return-void
.end method
