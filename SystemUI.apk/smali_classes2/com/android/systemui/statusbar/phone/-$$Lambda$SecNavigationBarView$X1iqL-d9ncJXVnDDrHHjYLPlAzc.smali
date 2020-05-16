.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$SecNavigationBarView$X1iqL-d9ncJXVnDDrHHjYLPlAzc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$SecNavigationBarView$X1iqL-d9ncJXVnDDrHHjYLPlAzc;->f$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$SecNavigationBarView$X1iqL-d9ncJXVnDDrHHjYLPlAzc;->f$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    check-cast p1, Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->lambda$initImmersiveController$1(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;)V

    return-void
.end method
