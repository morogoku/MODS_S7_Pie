.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarView$WX5LIdBsuNfgJjCid-qLZzvT0Ak;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarView$WX5LIdBsuNfgJjCid-qLZzvT0Ak;->f$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarView$WX5LIdBsuNfgJjCid-qLZzvT0Ak;->f$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->lambda$onAttachedToWindow$1(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    return-void
.end method
