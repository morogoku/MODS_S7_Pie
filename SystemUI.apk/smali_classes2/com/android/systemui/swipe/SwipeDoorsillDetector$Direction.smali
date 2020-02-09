.class final enum Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;
.super Ljava/lang/Enum;
.source "SwipeDoorsillDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/swipe/SwipeDoorsillDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

.field public static final enum DOWN:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

.field public static final enum LEFT:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

.field public static final enum RIGHT:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

.field public static final enum SWIPE:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

.field public static final enum TAP:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

.field public static final enum UP:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->LEFT:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    new-instance v0, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    const-string v1, "RIGHT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->RIGHT:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    new-instance v0, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    const-string v1, "UP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->UP:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    new-instance v0, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    const-string v1, "DOWN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->DOWN:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    new-instance v0, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    const-string v1, "TAP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->TAP:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    new-instance v0, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    const-string v1, "SWIPE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->SWIPE:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    sget-object v1, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->LEFT:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->RIGHT:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->UP:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->DOWN:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->TAP:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->SWIPE:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->$VALUES:[Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;
    .locals 1

    const-class v0, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;
    .locals 1

    sget-object v0, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->$VALUES:[Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    invoke-virtual {v0}, [Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    return-object v0
.end method
