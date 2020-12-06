.class public final enum Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;
.super Ljava/lang/Enum;
.source "SemAutoEnhanceCMHProviderInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChannelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

.field public static final enum DUMMY:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

.field public static final enum LIVE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

.field public static final enum LOCATION:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

.field public static final enum MANUAL:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

.field public static final enum MOMENT:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

.field public static final enum NO_MOMENT:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

.field public static final enum PERSON:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

.field public static final enum SHARE_FOR_LIVE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

.field public static final enum SHARE_FOR_MANUAL:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

.field public static final enum STORY:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

.field public static final enum TAG:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;


# instance fields
.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    const-string v1, "DUMMY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->DUMMY:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    const-string v1, "MANUAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->MANUAL:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    const-string v1, "NO_MOMENT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->NO_MOMENT:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    const-string v1, "MOMENT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->MOMENT:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    const-string v1, "STORY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->STORY:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    const-string v1, "PERSON"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->PERSON:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    const-string v1, "TAG"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->TAG:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    const-string v1, "LOCATION"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->LOCATION:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    const-string v1, "LIVE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->LIVE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    const-string v1, "SHARE_FOR_LIVE"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->SHARE_FOR_LIVE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    const-string v1, "SHARE_FOR_MANUAL"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->SHARE_FOR_MANUAL:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->DUMMY:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->MANUAL:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->NO_MOMENT:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->MOMENT:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->STORY:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->PERSON:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->TAG:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->LOCATION:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->LIVE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->SHARE_FOR_LIVE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->SHARE_FOR_MANUAL:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    aput-object v1, v0, v12

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->$VALUES:[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->mType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;
    .locals 1

    const-class v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;
    .locals 1

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->$VALUES:[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    invoke-virtual {v0}, [Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    return-object v0
.end method
