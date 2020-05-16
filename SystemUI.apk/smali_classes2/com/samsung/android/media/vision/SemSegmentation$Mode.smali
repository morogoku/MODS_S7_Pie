.class public final enum Lcom/samsung/android/media/vision/SemSegmentation$Mode;
.super Ljava/lang/Enum;
.source "SemSegmentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/vision/SemSegmentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/media/vision/SemSegmentation$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum AUTO_WITH_BG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum AUTO_WITH_BG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum AUTO_WITH_FG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum AUTO_WITH_FG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum MANUAL_WITH_BG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum MANUAL_WITH_BG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum MANUAL_WITH_FG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum MANUAL_WITH_FG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum NONE:Lcom/samsung/android/media/vision/SemSegmentation$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const-string v1, "AUTO_WITH_FG_LOOP_MARKER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->AUTO_WITH_FG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    new-instance v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const-string v1, "AUTO_WITH_BG_LOOP_MARKER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->AUTO_WITH_BG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    new-instance v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const-string v1, "AUTO_WITH_FG_STROKE_MARKER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->AUTO_WITH_FG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    new-instance v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const-string v1, "AUTO_WITH_BG_STROKE_MARKER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->AUTO_WITH_BG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    new-instance v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const-string v1, "MANUAL_WITH_FG_LOOP_MARKER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->MANUAL_WITH_FG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    new-instance v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const-string v1, "MANUAL_WITH_BG_LOOP_MARKER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->MANUAL_WITH_BG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    new-instance v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const-string v1, "MANUAL_WITH_FG_STROKE_MARKER"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->MANUAL_WITH_FG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    new-instance v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const-string v1, "MANUAL_WITH_BG_STROKE_MARKER"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->MANUAL_WITH_BG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    new-instance v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const-string v1, "NONE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->NONE:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    sget-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->AUTO_WITH_FG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->AUTO_WITH_BG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->AUTO_WITH_FG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->AUTO_WITH_BG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->MANUAL_WITH_FG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->MANUAL_WITH_BG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->MANUAL_WITH_FG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->MANUAL_WITH_BG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->NONE:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    aput-object v1, v0, v10

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->$VALUES:[Lcom/samsung/android/media/vision/SemSegmentation$Mode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/media/vision/SemSegmentation$Mode;
    .locals 1

    const-class v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/media/vision/SemSegmentation$Mode;
    .locals 1

    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->$VALUES:[Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    invoke-virtual {v0}, [Lcom/samsung/android/media/vision/SemSegmentation$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    return-object v0
.end method
