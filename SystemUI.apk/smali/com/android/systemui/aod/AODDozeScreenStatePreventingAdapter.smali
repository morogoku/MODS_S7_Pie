.class public Lcom/android/systemui/aod/AODDozeScreenStatePreventingAdapter;
.super Lcom/android/systemui/aod/AODMachine$Service$Delegate;
.source "AODDozeScreenStatePreventingAdapter.java"


# direct methods
.method public constructor <init>(Lcom/android/systemui/aod/AODMachine$Service;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/aod/AODMachine$Service$Delegate;-><init>(Lcom/android/systemui/aod/AODMachine$Service;)V

    return-void
.end method


# virtual methods
.method public setDozeScreenState(I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x2

    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/aod/AODMachine$Service$Delegate;->setDozeScreenState(I)V

    return-void
.end method
