.class Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$2;
.super Ljava/lang/Object;
.source "SimpleStatusBarIconController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$2;->this$0:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;)I
    .locals 5

    iget-wide v0, p1, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;->when:J

    iget-wide v2, p2, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;->when:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const/4 v4, -0x1

    return v4

    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;

    check-cast p2, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$2;->compare(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;)I

    move-result p1

    return p1
.end method
