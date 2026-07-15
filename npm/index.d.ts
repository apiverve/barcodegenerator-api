declare module '@apiverve/barcodegenerator' {
  export interface barcodegeneratorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface barcodegeneratorResponse {
    status: string;
    error: string | null;
    data: BarcodeGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface BarcodeGeneratorData {
      imageName:   null | string;
      format:      null | string;
      type:        null | string;
      expires:     number | null;
      downloadURL: null | string;
  }

  export default class barcodegeneratorWrapper {
    constructor(options: barcodegeneratorOptions);

    execute(callback: (error: any, data: barcodegeneratorResponse | null) => void): Promise<barcodegeneratorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: barcodegeneratorResponse | null) => void): Promise<barcodegeneratorResponse>;
    execute(query?: Record<string, any>): Promise<barcodegeneratorResponse>;
  }
}
