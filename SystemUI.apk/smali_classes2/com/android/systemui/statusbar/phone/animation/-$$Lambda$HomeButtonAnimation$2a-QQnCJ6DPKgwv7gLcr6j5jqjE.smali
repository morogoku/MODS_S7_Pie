.class public final synthetic Lcom/android/systemui/statusbar/phone/animation/-$$Lambda$HomeButtonAnimation$2a-QQnCJ6DPKgwv7gLcr6j5jqjE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/animation/-$$Lambda$HomeButtonAnimation$2a-QQnCJ6DPKgwv7gLcr6j5jqjE;->f$0:Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/animation/-$$Lambda$HomeButtonAnimation$2a-QQnCJ6DPKgwv7gLcr6j5jqjE;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/animation/-$$Lambda$HomeButtonAnimation$2a-QQnCJ6DPKgwv7gLcr6j5jqjE;->f$0:Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/animation/-$$Lambda$HomeButtonAnimation$2a-QQnCJ6DPKgwv7gLcr6j5jqjE;->f$1:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;->lambda$play$0(Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;I)V

    return-void
.end method
