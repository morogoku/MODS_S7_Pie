.class public final synthetic Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenDivider$u5OIXY-Itk9dNIlv71CFzZviq0Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;ZLandroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenDivider$u5OIXY-Itk9dNIlv71CFzZviq0Y;->f$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;

    iput-boolean p2, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenDivider$u5OIXY-Itk9dNIlv71CFzZviq0Y;->f$1:Z

    iput-object p3, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenDivider$u5OIXY-Itk9dNIlv71CFzZviq0Y;->f$2:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenDivider$u5OIXY-Itk9dNIlv71CFzZviq0Y;->f$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;

    iget-boolean v1, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenDivider$u5OIXY-Itk9dNIlv71CFzZviq0Y;->f$1:Z

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenDivider$u5OIXY-Itk9dNIlv71CFzZviq0Y;->f$2:Landroid/view/MotionEvent;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->lambda$bypassEvent$2(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;ZLandroid/view/MotionEvent;)V

    return-void
.end method
